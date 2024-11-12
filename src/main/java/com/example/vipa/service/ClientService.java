package com.example.vipa.service;

import com.example.vipa.model.Client;
import com.example.vipa.repository.ClientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ClientService {
    private final ClientRepository clientRepository;


    public Client getClient(int clientId) {
        return clientRepository.findById(clientId)
                .orElseThrow(() -> new RuntimeException("Пользователь с указанным id не найден."));
    }

    public Iterable<Client> getAllClients() {
        return clientRepository.findAll();
    }

    public Client createNewClient(Client newClient) {
        return clientRepository.save(newClient);
    }

    public Client updateClientInfo(int clientId, Client updatedClient) {
        updatedClient.setId(clientId);
        return clientRepository.save(updatedClient);
    }

    public void deleteClient(int id) {
        clientRepository.deleteById(id);
    }


}
