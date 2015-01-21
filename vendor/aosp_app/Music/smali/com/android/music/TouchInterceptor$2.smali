.class Lcom/android/music/TouchInterceptor$2;
.super Ljava/lang/Object;
.source "TouchInterceptor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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
.method constructor <init>(Lcom/android/music/TouchInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/music/TouchInterceptor$2;->this$0:Lcom/android/music/TouchInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 151
    const-string v0, "TouchInterceptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreDraw: mIsDraw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TouchInterceptor$2;->this$0:Lcom/android/music/TouchInterceptor;

    #getter for: Lcom/android/music/TouchInterceptor;->mIsDraw:Z
    invoke-static {v2}, Lcom/android/music/TouchInterceptor;->access$000(Lcom/android/music/TouchInterceptor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/music/TouchInterceptor$2;->this$0:Lcom/android/music/TouchInterceptor;

    #getter for: Lcom/android/music/TouchInterceptor;->mIsDraw:Z
    invoke-static {v0}, Lcom/android/music/TouchInterceptor;->access$000(Lcom/android/music/TouchInterceptor;)Z

    move-result v0

    return v0
.end method
