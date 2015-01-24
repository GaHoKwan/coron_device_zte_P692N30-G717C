.class Lcom/android/utk/UtkAppService$DelayedCmd;
.super Ljava/lang/Object;
.source "UtkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCmd"
.end annotation


# instance fields
.field id:I

.field msg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field final synthetic this$0:Lcom/android/utk/UtkAppService;


# direct methods
.method constructor <init>(Lcom/android/utk/UtkAppService;ILcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "msg"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/utk/UtkAppService$DelayedCmd;->this$0:Lcom/android/utk/UtkAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Lcom/android/utk/UtkAppService$DelayedCmd;->id:I

    .line 164
    iput-object p3, p0, Lcom/android/utk/UtkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 165
    return-void
.end method
