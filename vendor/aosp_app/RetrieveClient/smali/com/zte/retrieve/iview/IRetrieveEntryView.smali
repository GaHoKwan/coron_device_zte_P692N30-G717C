.class public interface abstract Lcom/zte/retrieve/iview/IRetrieveEntryView;
.super Ljava/lang/Object;
.source "IRetrieveEntryView.java"

# interfaces
.implements Lcom/zte/retrieve/iview/ICloudBindingControlView;


# virtual methods
.method public abstract getCloudCheckStatus()I
.end method

.method public abstract getLocalcheckStatus()I
.end method

.method public abstract setLocalBtnDisable()V
.end method

.method public abstract showLocalOpenedDialog(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showOpenCloudPromptDialog()V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method
