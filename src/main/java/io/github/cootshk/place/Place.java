package io.github.cootshk.place;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.event.player.PlayerBlockBreakEvents;
//import net.minecraft.util.ActionResult;
import net.minecraft.advancement.Advancement;

import net.minecraft.advancement.AdvancementEntry;
import net.minecraft.server.command.AdvancementCommand;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.util.Identifier;
import net.minecraft.entity.player.PlayerEntity;

import java.util.Iterator;
import java.util.Objects;

public class Place implements ModInitializer {
    private AdvancementEntry BreakBlockAdvancement = null;
    @Override
    public void onInitialize() {
        System.out.println("Hello Fabric world!");
        PlayerBlockBreakEvents.AFTER.register((world, player, pos, state, entity) -> {
            System.out.println("Block broken by " + player.getName().getString());
//            Advancement BreakBlockAdvancement = Objects.requireNonNull(Objects.requireNonNull(world.getServer()).getAdvancementLoader().get(Identifier.tryParse("cootshk:place/blocks/break"))).value();
            ServerPlayerEntity serverPlayer = (ServerPlayerEntity) player;
            for (AdvancementEntry entry : Objects.requireNonNull(world.getServer()).getAdvancementLoader().getAdvancements()) {
                if (entry.toString().equals("cootshk:place/blocks/break")) {
                    BreakBlockAdvancement = entry;
                    break;
                }
            }
            serverPlayer.getAdvancementTracker().grantCriterion(BreakBlockAdvancement, "break");
//            return ActionResult.PASS;
        });
    }
    // When a block is broken, this event is called


}
