context("rain_energy related tests")

test_that("rain_energy returns correct values", {

  # NA or NULL value return NA
  expect_true(is.na(rain_energy(NA)))
  expect_true(is.na(rain_energy(NULL)))

  # brown_foster equation
  expect_equal(rain_energy(intensity = 1, en_equation = "brown_foster"),
               0.29 * (1 - 0.72 * exp(-0.05 * 1)))

  # mc_gregor equation
  expect_equal(rain_energy(intensity = 1, en_equation = "mcgregor_mutch"),
               0.273 + 0.2168 * exp(-0.048 * 1) -
                 0.4126 * exp(-0.072 * 1))

  # laws_parson
  expect_equal(rain_energy(intensity = 1, en_equation = "wisch_smith"),
               0.119 + 0.0873 * log10(1))
  expect_equal(rain_energy(intensity = 77, en_equation = "wisch_smith"),
               0.283)

})
