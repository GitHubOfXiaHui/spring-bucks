package edu.bupt.xiahui.springbucks.controller;

import edu.bupt.xiahui.springbucks.common.Constants;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author xiahui
 * @date 2019/11/17
 */
@RestController
public class AliveController {
    @GetMapping("/alive")
    public String alive() {
        return Constants.ALIVE;
    }
}
