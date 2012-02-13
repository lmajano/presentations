import Data.ByteString.Lazy.Char8 as BL (pack)
import Network.AMQP
import System.Posix.Unistd
import System.Random
import Text.Printf

host = "127.0.0.1"
vhost = "/"
user = "guest"
password = "guest"

exchange = ""
routingKey = "stock.prices"

sleepPeriod = 500 * 1000

stocks = ["AAPL", "VMW", "GOOG"]

main = do
  connection <- openConnection host vhost user password
  channel <- openChannel connection

  tickers <- randomTickers
  publish channel tickers

  closeConnection connection

publish channel (ticker:rest) = do
  publishMsg channel exchange routingKey 
             newMsg {msgBody = (BL.pack ticker)}
  usleep sleepPeriod
  publish channel rest

randomTickers = do
  g <- newStdGen 
  return $ 
    let indexes = randomRs (0, length stocks - 1) g
        prices  = randomRs (0.1, 5.0) g
    in zipWith formatTicker (map (stocks !!) indexes) prices
    
formatTicker :: String -> Float -> String
formatTicker = printf "%s,%.2f"
