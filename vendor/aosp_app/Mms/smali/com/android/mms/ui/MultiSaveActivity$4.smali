.class Lcom/android/mms/ui/MultiSaveActivity$4;
.super Ljava/lang/Object;
.source "MultiSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiSaveActivity;->setUpActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiSaveActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/mms/ui/MultiSaveActivity$4;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity$4;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    #calls: Lcom/android/mms/ui/MultiSaveActivity;->save()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiSaveActivity;->access$400(Lcom/android/mms/ui/MultiSaveActivity;)V

    .line 359
    return-void
.end method
