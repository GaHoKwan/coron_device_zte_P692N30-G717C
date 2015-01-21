.class public Ltmsdk/common/module/aresengine/ContactEntity;
.super Ltmsdk/common/module/aresengine/TelephonyEntity;
.source "SourceFile"


# instance fields
.field public enableForCalling:Z

.field public enableForSMS:Z

.field public isSimContact:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/ContactEntity;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/TelephonyEntity;-><init>(Ltmsdk/common/module/aresengine/TelephonyEntity;)V

    .line 31
    iget-boolean v0, p1, Ltmsdk/common/module/aresengine/ContactEntity;->isSimContact:Z

    iput-boolean v0, p0, Ltmsdk/common/module/aresengine/ContactEntity;->isSimContact:Z

    .line 32
    iget-boolean v0, p1, Ltmsdk/common/module/aresengine/ContactEntity;->enableForCalling:Z

    iput-boolean v0, p0, Ltmsdk/common/module/aresengine/ContactEntity;->enableForCalling:Z

    .line 33
    iget-boolean v0, p1, Ltmsdk/common/module/aresengine/ContactEntity;->enableForSMS:Z

    iput-boolean v0, p0, Ltmsdk/common/module/aresengine/ContactEntity;->enableForSMS:Z

    .line 34
    return-void
.end method
