.class Lcom/android/mms/ui/ClassifySlotFragment$NegativeButtonListener;
.super Ljava/lang/Object;
.source "ClassifySlotFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassifySlotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegativeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifySlotFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ClassifySlotFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/mms/ui/ClassifySlotFragment$NegativeButtonListener;->this$0:Lcom/android/mms/ui/ClassifySlotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ClassifySlotFragment;Lcom/android/mms/ui/ClassifySlotFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassifySlotFragment$NegativeButtonListener;-><init>(Lcom/android/mms/ui/ClassifySlotFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 438
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 439
    return-void
.end method