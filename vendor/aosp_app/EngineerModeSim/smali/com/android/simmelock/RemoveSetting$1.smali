.class Lcom/android/simmelock/RemoveSetting$1;
.super Ljava/lang/Object;
.source "RemoveSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/simmelock/RemoveSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/simmelock/RemoveSetting;


# direct methods
.method constructor <init>(Lcom/android/simmelock/RemoveSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/simmelock/RemoveSetting$1;->this$0:Lcom/android/simmelock/RemoveSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/simmelock/RemoveSetting$1;->this$0:Lcom/android/simmelock/RemoveSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void
.end method
