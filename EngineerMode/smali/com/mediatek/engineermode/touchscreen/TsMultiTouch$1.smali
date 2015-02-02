.class Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$1;
.super Ljava/lang/Thread;
.source "TsMultiTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

.field final synthetic val$commPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$1;->this$0:Lcom/mediatek/engineermode/touchscreen/TsMultiTouch;

    iput-object p2, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$1;->val$commPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 108
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/sh"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo [ENTER_MULTI_TOUCH] >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsMultiTouch$1;->val$commPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 112
    .local v0, cmd:[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenShellExe;->execCommand([Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 114
    const-string v3, "EM/TouchScreen/MT"

    const-string v4, "-->onResume Start logging..."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v2           #ret:I
    :goto_0
    return-void

    .line 116
    .restart local v2       #ret:I
    :cond_0
    const-string v3, "EM/TouchScreen/MT"

    const-string v4, "-->onResume Logging failed!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v2           #ret:I
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    const-string v3, "EM/TouchScreen/MT"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
