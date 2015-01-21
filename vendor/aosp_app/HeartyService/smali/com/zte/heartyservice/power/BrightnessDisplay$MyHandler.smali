.class Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;
.super Landroid/os/Handler;
.source "BrightnessDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/BrightnessDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/BrightnessDisplay;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/power/BrightnessDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;->this$0:Lcom/zte/heartyservice/power/BrightnessDisplay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/power/BrightnessDisplay;Lcom/zte/heartyservice/power/BrightnessDisplay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;-><init>(Lcom/zte/heartyservice/power/BrightnessDisplay;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;->this$0:Lcom/zte/heartyservice/power/BrightnessDisplay;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/BrightnessDisplay;->finish()V

    .line 66
    return-void
.end method
