.class public Lcom/zte/heartyservice/common/datatype/NewCommonDialog;
.super Landroid/app/Dialog;
.source "NewCommonDialog.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewCommonDialog;->context:Landroid/content/Context;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewCommonDialog;->context:Landroid/content/Context;

    .line 17
    return-void
.end method
