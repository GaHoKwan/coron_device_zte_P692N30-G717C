.class Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;
.super Ljava/lang/Object;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreResult"
.end annotation


# instance fields
.field public calllogCount:I

.field public contactCount:I

.field public fileCount:I

.field public passwordRecoutCount:I

.field public smsCount:I

.field public success:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->success:Z

    .line 591
    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->contactCount:I

    .line 592
    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->smsCount:I

    .line 593
    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->calllogCount:I

    .line 594
    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->passwordRecoutCount:I

    .line 595
    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->fileCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;-><init>()V

    return-void
.end method
