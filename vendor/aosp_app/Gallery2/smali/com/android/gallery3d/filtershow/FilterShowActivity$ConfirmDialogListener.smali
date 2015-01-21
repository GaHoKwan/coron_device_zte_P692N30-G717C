.class Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1168
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
