.class Lcom/isw/android/corp/message/MiniPhoneLocation$1;
.super Ljava/lang/Thread;
.source "MiniPhoneLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniPhoneLocation;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "MiniPhoneLocation"

    const-string v1, "MiniPhoneLocation.upload..."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isw/android/corp/message/MiniPhoneLocation;->access$0(I)V

    .line 93
    #calls: Lcom/isw/android/corp/message/MiniPhoneLocation;->process()V
    invoke-static {}, Lcom/isw/android/corp/message/MiniPhoneLocation;->access$1()V

    .line 94
    return-void
.end method
