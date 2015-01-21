.class Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;
.super Ljava/lang/Object;
.source "RetrieveMasterControlPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->showProgressDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 243
    packed-switch p2, :pswitch_data_0

    .line 254
    :goto_0
    return v0

    .line 245
    :pswitch_0
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AliveWithUIThread;->cancelThread()V

    .line 246
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    #getter for: Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mProDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->access$3(Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 247
    iget-object v1, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v1, v1, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter$3;->this$0:Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;

    iget-object v2, v2, Lcom/zte/retrieve/presenter/RetrieveMasterControlPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0600cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
