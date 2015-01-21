.class public interface abstract Ltmsdk/common/ISDKClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/ISDKClient$Proxy;,
        Ltmsdk/common/ISDKClient$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.tmsecure.common.ISDKClient"

.field public static final TRANSACTION_SENDMESSAGE:I = 0x132b535


# virtual methods
.method public abstract sendMessage(Ltmsdk/common/DataEntity;)Ltmsdk/common/DataEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
