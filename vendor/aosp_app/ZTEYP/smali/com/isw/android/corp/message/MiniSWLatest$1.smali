.class Lcom/isw/android/corp/message/MiniSWLatest$1;
.super Ljava/lang/Thread;
.source "MiniSWLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniSWLatest;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/message/MiniSWLatest;->fileOnline:Ljava/lang/String;

    .line 37
    const-string v0, "true"

    sput-object v0, Lcom/isw/android/corp/message/MiniSWLatest;->optionalOnline:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isw/android/corp/message/MiniSWLatest;->access$0(I)V

    .line 39
    #calls: Lcom/isw/android/corp/message/MiniSWLatest;->process()V
    invoke-static {}, Lcom/isw/android/corp/message/MiniSWLatest;->access$1()V

    .line 40
    return-void
.end method
