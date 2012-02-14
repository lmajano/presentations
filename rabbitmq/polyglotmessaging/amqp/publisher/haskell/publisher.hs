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

