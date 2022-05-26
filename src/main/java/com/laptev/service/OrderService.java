package com.laptev.service;

import com.laptev.entity.Order;
import com.laptev.entity.OrderStatus;
import com.laptev.entity.Request;
import com.laptev.entity.RequestStatus;
import com.laptev.repository.OrderRepository;
import lombok.AllArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;

    private final EmailSenderService emailSenderService;

    public void saveOrder(Order order) {
        orderRepository.save(order);
    }

    public List<Order> allOrders() {
        return orderRepository.findAll();
    }

    public void sendMail(String userMail, Request request, Order order) {
        final SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(userMail);
        mailMessage.setSubject("Заяка обработана!");
        mailMessage.setFrom("<MAIL>");
        mailMessage.setText(
                "Ваша заявка на комнату была обработана администратором." +
                        "\nВаша заявка: " +
                        "\nКолличество мест: " + request.getPlaces() + ";" +
                        "\nКласс комнаты: " + request.getRoomClass() + "." +
                        "\n\nПредложенная комната: " +
                        "\nКолличество мест: " + order.getRoom().getNumOfPlaces() + ";" +
                        "\nКласс комнаты: " + order.getRoom().getRoomClass() + "." +
                        "\n\nЕсли вы согласны с предложенной комнатой, перейдите по ссылке: " +
                        "http://localhost:8080/confirmRoom?confirm=yes&orderId=" + order.getId() + "&requestId=" + request.getId() +
                        "\n\nЕсли вы не согласны с предложением, перейдите по ссылке: " +
                        "http://localhost:8080/confirmRoom?confirm=no&orderId=" + order.getId() + "&requestId=" + request.getId()
        );

        emailSenderService.sendEmail(mailMessage);
    }

    public Order findById(Long id){
        if (orderRepository.findById(id).isPresent()) {
            return orderRepository.findById(id).get();
        } else return null;
    }

    public void updateOrderStatus(Order order, OrderStatus orderStatus) {
        order.setOrderStatus(orderStatus);
        orderRepository.save(order);
    }

    public void deleteOrderById(Long id){
        orderRepository.deleteById(id);
    }

    public List<Order> findOrdersByUserName(String name){
        return orderRepository.findOrdersByUserName(name);
    }

    public List<Order> findOrdersByUserId(Long id){
        return orderRepository.findOrdersByUserId(id);
    }
}
