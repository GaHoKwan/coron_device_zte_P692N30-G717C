.class Lcom/android/music/TouchInterceptor$1;
.super Landroid/database/ContentObserver;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TouchInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TouchInterceptor;


# direct methods
.method constructor <init>(Lcom/android/music/TouchInterceptor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/TouchInterceptor;->mIsDraw:Z
    invoke-static {v0, v1}, Lcom/android/music/TouchInterceptor;->access$002(Lcom/android/music/TouchInterceptor;Z)Z

    .line 139
    const-string v0, "TouchInterceptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: mIsDraw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TouchInterceptor$1;->this$0:Lcom/android/music/TouchInterceptor;

    #getter for: Lcom/android/music/TouchInterceptor;->mIsDraw:Z
    invoke-static {v2}, Lcom/android/music/TouchInterceptor;->access$000(Lcom/android/music/TouchInterceptor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
