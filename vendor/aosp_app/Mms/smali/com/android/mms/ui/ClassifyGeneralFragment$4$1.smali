.class Lcom/android/mms/ui/ClassifyGeneralFragment$4$1;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment$4;->onNumberSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$4;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$4$1;->this$1:Lcom/android/mms/ui/ClassifyGeneralFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 563
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$4$1$1;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment$4$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 574
    return-void
.end method
