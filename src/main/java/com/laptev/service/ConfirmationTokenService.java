package com.laptev.service;

import com.laptev.entity.ConfirmationToken;
import com.laptev.repository.ConfirmationTokenRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class ConfirmationTokenService {

    private final ConfirmationTokenRepository confirmationTokenRepository;

    public void saveConfirmationToken(ConfirmationToken confirmationToken) {
        confirmationTokenRepository.save(confirmationToken);
    }

    public void deleteConfirmationToken(Long id) {
        confirmationTokenRepository.deleteById(id);
    }

    public Optional<ConfirmationToken> findConfirmationTokenByToken(String token) {
        return confirmationTokenRepository.findConfirmationTokenByConfirmationToken(token);
    }

    public ConfirmationToken findConfirmationTokenByUserId(Long userId) {
        return confirmationTokenRepository.findConfirmationTokenByUserId(userId);
    }
}
