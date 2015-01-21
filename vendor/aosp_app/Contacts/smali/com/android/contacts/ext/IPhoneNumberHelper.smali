.class public interface abstract Lcom/android/contacts/ext/IPhoneNumberHelper;
.super Ljava/lang/Object;
.source "IPhoneNumberHelper.java"


# virtual methods
.method public abstract canPlaceCallsTo(Ljava/lang/CharSequence;)Z
.end method

.method public abstract canSendSmsTo(Ljava/lang/CharSequence;)Z
.end method

.method public abstract getCallUri(Ljava/lang/String;I)Landroid/net/Uri;
.end method

.method public abstract getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract isEmergencyNumber(Ljava/lang/CharSequence;)Z
.end method

.method public abstract isEmergencyNumber(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract isSipNumber(Ljava/lang/CharSequence;)Z
.end method

.method public abstract isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z
.end method

.method public abstract isVoicemailNumber(Ljava/lang/CharSequence;)Z
.end method
