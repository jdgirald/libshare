@IsTest
public class BooleanAssertTest {
    static Assert assert = Sf.assert.setUseCustomException(true);
    static String customMessage = 'Custom Message';
	
    testmethod public static void test_isNull() {
        assert.that((Boolean) null).isNull();

        try {
	        assert.that(true).isNull();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: <null>, Actual: <not null> true');
        }
        
        try {
	        assert.that(false).isNull();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: <null>, Actual: <not null> false');
        }

        assert.that((Boolean) null).isNull(customMessage);
        try {
	        assert.that(true).isNull(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
        
        try {
	        assert.that(false).isNull(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
    }

    testmethod public static void test_isNotNull() {
        assert.that(true).isNotNull();
        assert.that(false).isNotNull();

        try {
	        assert.that((Boolean) null).isNotNull();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: <not null>, Actual: <null>');
        }
        
        assert.that(true).isNotNull(customMessage);
        try {
	        assert.that((Boolean) null).isNotNull(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
    }
 
    testmethod public static void test_isTrue() {
        assert.that(true).isTrue();

        try {
	        assert.that((Boolean) null).isTrue();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: true, Actual: null');
        }
        
        try {
	        assert.that(false).isTrue();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: true, Actual: false');
        }

        assert.that(true).isTrue(customMessage);
        try {
	        assert.that((Boolean) null).isTrue(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
        
        try {
	        assert.that(false).isTrue(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
    }

    testmethod public static void test_isFalse() {
        assert.that(false).isFalse();

        try {
	        assert.that((Boolean) null).isFalse();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: false, Actual: null');
        }
        
        try {
	        assert.that(true).isFalse();
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: false, Actual: true');
        }

        assert.that(false).isFalse(customMessage);
        try {
	        assert.that((Boolean) null).isFalse(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
        
        try {
	        assert.that(true).isFalse(customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
    }

    testmethod public static void test_isEqualsTo() {
        assert.that(true).isEqualsTo(true);
        assert.that(false).isEqualsTo(false);

        try {
	        assert.that((Boolean) null).isEqualsTo(true);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: true, Actual: null');
        }
        
        try {
	        assert.that(false).isEqualsTo(true);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: true, Actual: false');
        }

        assert.that(true).isEqualsTo(true, customMessage);
        try {
	        assert.that((Boolean) null).isEqualsTo(true, customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
        
        try {
	        assert.that(false).isEqualsTo(true, customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
    }

    testmethod public static void test_isNotEqualsTo() {
        assert.that(false).isNotEqualsTo(true);
        assert.that(true).isNotEqualsTo(false);
        assert.that((Boolean) null).isNotEqualsTo(true);

        try {
	        assert.that(true).isNotEqualsTo(true);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage('Expected: <not equals to> true');
        }

        assert.that((Boolean) null).isNotEqualsTo(true, customMessage);
        
        try {
	        assert.that(true).isNotEqualsTo(true, customMessage);
            assert.expectedException();
        } catch (Exception e) {
            assert.that(e).hasMessage(customMessage);
        }
    }

}