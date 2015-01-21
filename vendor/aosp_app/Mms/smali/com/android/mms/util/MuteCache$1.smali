.class final Lcom/android/mms/util/MuteCache$1;
.super Ljava/lang/Object;
.source "MuteCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/MuteCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/mms/util/MuteCache$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/util/MuteCache$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/util/MuteCache;->cacheMuteThreads(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/util/MuteCache;->access$000(Landroid/content/Context;)V

    .line 37
    return-void
.end method
