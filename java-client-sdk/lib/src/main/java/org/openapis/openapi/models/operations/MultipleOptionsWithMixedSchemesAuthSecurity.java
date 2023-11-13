/* 
 * Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.
 */

package org.openapis.openapi.models.operations;

import org.openapis.openapi.utils.SpeakeasyMetadata;


public class MultipleOptionsWithMixedSchemesAuthSecurity {
    @SpeakeasyMetadata("security:option=true")
    public MultipleOptionsWithMixedSchemesAuthSecurityOption1 option1;

    public MultipleOptionsWithMixedSchemesAuthSecurity withOption1(MultipleOptionsWithMixedSchemesAuthSecurityOption1 option1) {
        this.option1 = option1;
        return this;
    }
    
    @SpeakeasyMetadata("security:option=true")
    public MultipleOptionsWithMixedSchemesAuthSecurityOption2 option2;

    public MultipleOptionsWithMixedSchemesAuthSecurity withOption2(MultipleOptionsWithMixedSchemesAuthSecurityOption2 option2) {
        this.option2 = option2;
        return this;
    }
    
    public MultipleOptionsWithMixedSchemesAuthSecurity(){}
}
