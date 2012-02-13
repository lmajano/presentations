package com.rabbitmq.examples.stock.publisher;

import com.rabbitmq.client.Channel;

import java.io.IOException;

final class PublishTask implements Runnable {

    private final Channel channel;

    public PublishTask(Channel channel) {
        this.channel = channel;
    }

    public void run() {
        PriceGenerator generator = new PriceGenerator();

        while (!Thread.interrupted()) {

            try {
                String price = generator.nextPrice();
                System.out.println(price);
                channel.basicPublish("", "stock.prices", null, price.getBytes());
                Thread.sleep(500);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
