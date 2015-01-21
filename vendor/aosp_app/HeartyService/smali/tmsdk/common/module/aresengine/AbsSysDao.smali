.class public abstract Ltmsdk/common/module/aresengine/AbsSysDao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAllCallLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllContact()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastCallLog()Ltmsdk/common/module/aresengine/CallLogEntity;
.end method

.method public abstract getLastInBoxMms(II)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getLastInBoxSms(II)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getLastOutBoxMms(I)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getLastOutBoxSms(I)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getLastSentMms(I)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getLastSentSms(I)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getMms(II)Ltmsdk/common/module/aresengine/SmsEntity;
.end method

.method public abstract getSimContact()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;
.end method

.method public abstract remove(Ltmsdk/common/module/aresengine/CallLogEntity;)Z
.end method

.method public abstract remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z
.end method

.method public abstract supportThisPhone()Z
.end method
