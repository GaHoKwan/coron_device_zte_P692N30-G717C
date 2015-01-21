.class public Ltmsdk/common/module/aresengine/CallLogEntity;
.super Ltmsdk/common/module/aresengine/TelephonyEntity;
.source "SourceFile"


# instance fields
.field public date:J

.field public duration:J

.field public fromCard:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/CallLogEntity;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>(Ltmsdk/common/module/aresengine/TelephonyEntity;)V

    .line 39
    iget-wide v0, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    .line 40
    iget v0, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    iput v0, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    .line 41
    iget-wide v0, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    iput-wide v0, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    .line 42
    iget-object v0, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    .line 43
    return-void
.end method
