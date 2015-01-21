.class public Lcom/zte/heartyservice/common/datatype/ZTEDialog;
.super Landroid/app/Dialog;
.source "ZTEDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/common/datatype/ZTEDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/common/datatype/ZTEDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16
    .local v0, view:Landroid/widget/TextView;
    const/4 v1, 0x1

    const/high16 v2, 0x41b0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    return-void
.end method
