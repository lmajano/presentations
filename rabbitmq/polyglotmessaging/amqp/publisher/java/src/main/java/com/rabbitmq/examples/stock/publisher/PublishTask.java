package com.rabbitmq.examples.stock.publisher;

import com.rabbitmq.client.Channel;

import java.io.IOException;

final class PublishTask implements Runnable {

    private final Channel channel;

    public PublishTask(Channel channel) {
        this.channel = channel;
    }

    public void run() {
        
    }
}
