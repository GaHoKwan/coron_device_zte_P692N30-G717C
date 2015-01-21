.class Lcom/android/exchange/adapter/AbstractSyncParser$1;
.super Ljava/lang/Object;
.source "AbstractSyncParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/adapter/AbstractSyncParser;->parse()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/AbstractSyncParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/AbstractSyncParser;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncParser$1;->this$0:Lcom/android/exchange/adapter/AbstractSyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser$1;->this$0:Lcom/android/exchange/adapter/AbstractSyncParser;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f05

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method
