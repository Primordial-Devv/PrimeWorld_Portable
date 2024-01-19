function RentalMainmenu()
    lib.registerContext({
        id = "pm-rental_ox-lib_mainmenu",
        title = "Vehicle Rental",
        options = {
            {
                title = "Rent a vehicle",
                description = "Rent a vehicle from the rental company",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    RentalCategoryMenu()
                end
            },
            {
                title = "Return a vehicle",
                description = "Return a vehicle to the rental company",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("Return a vehicle")
                end
            },
            {
                title = "Book a vehicle",
                description = "SOON ...",
                -- description = "Book a vehicle from the rental company",
                icon = "fas fa-car",
                disabled = true,
                -- arrow = true,
                -- onSelect = function()
                --     lib.print.info("Book a vehicle")
                -- end
            },
            {
                title = "Rental History",
                description = "SOON ...",
                -- description = "View your rental history",
                icon = "fas fa-car",
                disabled = true,
                -- arrow = true,
                -- onSelect = function()
                --     lib.print.info("Rental History")
                -- end
            },
            {
                title = "Loyalty Points",
                description = "SOON ...",
                -- description = "View your loyalty points",
                icon = "fas fa-car",
                disabled = true,
                -- arrow = true,
                -- onSelect = function()
                --     lib.print.info("Loyalty Points")
                -- end
            },
            {
                title = "Informations",
                description = "SOON ...",
                -- description = "View informations about the rental company",
                icon = "fas fa-car",
                disabled = true,
                -- arrow = true,
                -- onSelect = function()
                --     lib.print.info("Informations")
                -- end
            }
        }
    })

    lib.showContext("pm-rental_ox-lib_mainmenu")
end





function RentalCategoryMenu()
    lib.registerContext({
        id = "pm-rental_ox-lib_categoryMenu",
        title = "Vehicle Categories",
        options = {
            {
                title = "Compact",
                description = "Rent a compact vehicle",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    RentalCompactVehicleMenu()
                end
            },
            -- {
            --     title = "Sedan",
            --     description = "Rent a sedan vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Sedan")
            --     end
            -- },
            {
                title = "SUV",
                description = "Rent a SUV vehicle",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    RentalSuvVehicleMenu()
                end
            },
            -- {
            --     title = "Coupé",
            --     description = "Rent a coupé vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Coupé")
            --     end
            -- },
            -- {
            --     title = "Muscle",
            --     description = "Rent a muscle vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Muscle")
            --     end
            -- },
            -- {
            --     title = "Sports Classic",
            --     description = "Rent a sports classic vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Sports Classic")
            --     end
            -- },
            -- {
            --     title = "Sports",
            --     description = "Rent a sports vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Sports")
            --     end
            -- },
            {
                title = "Luxe",
                description = "Rent a luxe vehicle",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    RentalLuxeVehicleMenu()
                end
            },
            {
                title = "Motorcycle",
                description = "Rent a motorcycle",
                icon = "fas fa-motorcycle",
                arrow = true,
                onSelect = function()
                    RentalMotorcycleVehicleMenu()
                end
            },
            -- {
            --     title = "Offroad",
            --     description = "Rent a offroad vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Offroad")
            --     end
            -- },
            -- {
            --     title = "Industrial",
            --     description = "Rent a industrial vehicle",
            --     icon = "fas fa-car",
            --     arrow = true,
            --     onSelect = function()
            --         lib.print.info("Industrial")
            --     end
            -- }
        }
    })

    lib.showContext("pm-rental_ox-lib_categoryMenu")
end





function RentalCompactVehicleMenu()
    lib.registerContext({
        id = "pm-rental_ox-lib_compactehicleMenu",
        title = "Compact Vehicles",
        options = {
            {
                title = "issi3",
                description = "Rent a issi3",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("issi3")
                end
            },
            {
                title = "brioso3",
                description = "Rent a brioso3",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("brioso3")
                end
            },
            {
                title = "kanjo",
                description = "Rent a kanjo",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("kanjo")
                end
            }
        }
    })

    lib.showContext("pm-rental_ox-lib_compactehicleMenu")
end





function RentalSuvVehicleMenu()
    lib.registerContext({
        id = "pm-rental_ox-lib_suvVehicleMenu",
        title = "SUV Vehicles",
        options = {
            {
                title = "baller8",
                description = "Rent a baller8",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("baller8")
                end
            },
            {
                title = "astron",
                description = "Rent a astron",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("astron")
                end
            },
            {
                title = "iwagen",
                description = "Rent a iwagen",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("iwagen")
                end
            }
        }
    })

    lib.showContext("pm-rental_ox-lib_suvVehicleMenu")
end





function RentalLuxeVehicleMenu()
    lib.registerContext({
        id = "pm-rental_ox-lib_luxeVehicleMenu",
        title = "Luxe Vehicles",
        options = {
            {
                title = "flashgt",
                description = "Rent a flashgt",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("flashgt")
                end
            },
            {
                title = "tyrant",
                description = "Rent a tyrant",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("tyrant")
                end
            },
            {
                title = "jester3",
                description = "Rent a jester3",
                icon = "fas fa-car",
                arrow = true,
                onSelect = function()
                    lib.print.info("jester3")
                end
            }
        }
    })

    lib.showContext("pm-rental_ox-lib_luxeVehicleMenu")
end





function RentalMotorcycleVehicleMenu()
    lib.registerContext({
        id = "pm-rental_ox-lib_motorcycleVehicleMenu",
        title = "Motorcycle Vehicles",
        options = {
            {
                title = "shinobi",
                description = "Rent a shinobi",
                icon = "fas fa-motorcycle",
                arrow = true,
                onSelect = function()
                    lib.print.info("shinobi")
                end
            },
            {
                title = "reever",
                description = "Rent a reever",
                icon = "fas fa-motorcycle",
                arrow = true,
                onSelect = function()
                    lib.print.info("reever")
                end
            },
            {
                title = "vindicator",
                description = "Rent a vindicator",
                icon = "fas fa-motorcycle",
                arrow = true,
                onSelect = function()
                    lib.print.info("vindicator")
                end
            }
        }
    })

    lib.showContext("pm-rental_ox-lib_motorcycleVehicleMenu")
end