.class abstract Lcom/android/email/MessagingController$CancelableRunnable;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CancelableRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method private constructor <init>(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 2601
    iput-object p1, p0, Lcom/android/email/MessagingController$CancelableRunnable;->this$0:Lcom/android/email/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/MessagingController;Lcom/android/email/MessagingController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2601
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController$CancelableRunnable;-><init>(Lcom/android/email/MessagingController;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 2606
    return-void
.end method

.method public abstract run()V
.end method
