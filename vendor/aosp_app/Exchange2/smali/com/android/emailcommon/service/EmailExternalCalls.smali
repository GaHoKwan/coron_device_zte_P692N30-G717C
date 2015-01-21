.class public interface abstract Lcom/android/emailcommon/service/EmailExternalCalls;
.super Ljava/lang/Object;
.source "EmailExternalCalls.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/EmailExternalCalls$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendCallback(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateCallback(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
