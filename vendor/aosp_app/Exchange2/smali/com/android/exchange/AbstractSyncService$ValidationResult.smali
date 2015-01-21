.class public Lcom/android/exchange/AbstractSyncService$ValidationResult;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/AbstractSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation


# static fields
.field static final CONNECTION_FAILURE:I = 0x1

.field static final EXCEPTION:I = 0x3

.field static final NO_FAILURE:I = 0x0

.field static final VALIDATION_FAILURE:I = 0x2

.field static final succeeded:Lcom/android/exchange/AbstractSyncService$ValidationResult;


# instance fields
.field exception:Ljava/lang/Exception;

.field failure:I

.field reason:Ljava/lang/String;

.field success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 172
    new-instance v0, Lcom/android/exchange/AbstractSyncService$ValidationResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/AbstractSyncService$ValidationResult;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->succeeded:Lcom/android/exchange/AbstractSyncService$ValidationResult;

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 175
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 189
    iput-boolean v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 190
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 191
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 192
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .parameter "_success"

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 175
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 185
    iput-boolean p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 186
    return-void
.end method

.method constructor <init>(ZILjava/lang/String;)V
    .locals 2
    .parameter "_success"
    .parameter "_failure"
    .parameter "_reason"

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 175
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->exception:Ljava/lang/Exception;

    .line 179
    iput-boolean p1, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    .line 180
    iput p2, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->failure:I

    .line 181
    iput-object p3, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService$ValidationResult;->success:Z

    return v0
.end method
