.class Lcn/com/zte/yp/NumberLocatorMainActivity$2;
.super Ljava/lang/Object;
.source "NumberLocatorMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/yp/NumberLocatorMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/NumberLocatorMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$2;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 78
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$2;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-virtual {v0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->clearAllText()V

    .line 79
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$2;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->resetHint()V
    invoke-static {v0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$000(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    .line 80
    iget-object v0, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$2;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #getter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->mNuminput:Landroid/widget/EditText;
    invoke-static {v0}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$100(Lcn/com/zte/yp/NumberLocatorMainActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
