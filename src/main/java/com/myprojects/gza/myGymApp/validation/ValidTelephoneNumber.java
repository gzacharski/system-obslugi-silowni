package com.myprojects.gza.myGymApp.validation;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;


@Constraint(validatedBy = TelephoneNumberValidator.class)
@Retention(RUNTIME)
@Target({ TYPE, FIELD, ANNOTATION_TYPE })
@Documented
public @interface ValidTelephoneNumber {
	String message() default "Numer telefonu powininien być 9 cyfrowy.";
	
	Class<?>[] groups() default {};
	
	Class<? extends Payload>[] payload() default {};
}
