.class public interface abstract Lcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onCancelClicked()V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onListViewItemSelected(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMidBtnClicked()V
.end method

.method public abstract onSureClicked(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTitleRightBtnClicked()V
.end method
