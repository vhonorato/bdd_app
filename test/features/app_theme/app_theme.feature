Feature: App theme

    @testMethodName: testGoldens
    Scenario: Primary swatch color is amber
        Given the app is rendered
        Then {'counter'} screenshot verified