package com.manager.hotel.web;

import com.manager.hotel.model.entity.Criteria;
import com.manager.hotel.service.GuestService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import static com.manager.hotel.web.ConstantPath.BOOKING;
import static com.manager.hotel.web.ConstantPath.GUESTS;

@Controller
@RequestMapping
@RequiredArgsConstructor
public class GuestController {

    private final GuestService guestService;

    @GetMapping("/guests")
    public String getAllGuests(
            final Model model) {
        model.addAttribute(GUESTS,
                guestService.getAllGuests());
        return GUESTS;
    }

    @GetMapping("/guests/{id}")
    public String getGuestById(
            final Model model,
            final @PathVariable Long id) {
        model.addAttribute("guest",
                guestService.findGuestById(id));
        return "guest";
    }

    @GetMapping("/departing")
    public String findGuestsDepartingToday(
            final Model model) {
        model.addAttribute(BOOKING, guestService
                .findDepartingToday());
        return BOOKING;
    }

    @GetMapping("/search")
    public String searchGuestsByCriteria(
            final Model model,
            @RequestParam Criteria criteria) {
        model.addAttribute(GUESTS, guestService
                .findByCriteria(criteria));
        return GUESTS;
    }
}
