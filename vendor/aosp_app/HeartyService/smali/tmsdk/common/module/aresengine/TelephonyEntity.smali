.class public abstract Ltmsdk/common/module/aresengine/TelephonyEntity;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public phonenum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/TelephonyEntity;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 29
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 30
    iget v0, p1, Ltmsdk/common/module/aresengine/TelephonyEntity;->id:I

    iput v0, p0, Ltmsdk/common/module/aresengine/TelephonyEntity;->id:I

    .line 31
    iget-object v0, p1, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    .line 32
    return-void
.end method
