package com.manager.hotel.web;

import com.manager.hotel.model.entity.Criteria;
import com.manager.hotel.service.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.manager.hotel.web.ConstantPath.AVAILABLE;
import static com.manager.hotel.web.ConstantPath.ROOMS;

@Controller
@RequestMapping("/rooms")
@RequiredArgsConstructor
public class RoomController {

    private final RoomService roomService;

    @GetMapping
    public String showRooms(
            final Model model) {
        model.addAttribute(ROOMS,
                roomService.findRooms());
        return ROOMS;
    }

    @GetMapping("/{roomId}")
    public String checkIn(
            final Model model,
            final @PathVariable Long roomId) {
        model.addAttribute("room", roomService
                .findRoomById(roomId));
        return "room";
    }

    @GetMapping("/free")
    public String showAvailableRooms(
            final Model model,
            @RequestParam Criteria criteria) {
        model.addAttribute(AVAILABLE, roomService
                .findAvailableRoom(criteria));
        return "room";
//        return AVAILABLE;
    }
}
