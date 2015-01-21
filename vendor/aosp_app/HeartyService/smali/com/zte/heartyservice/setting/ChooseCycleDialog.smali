.class public Lcom/zte/heartyservice/setting/ChooseCycleDialog;
.super Landroid/app/AlertDialog;
.source "ChooseCycleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;,
        Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->context:Landroid/content/Context;

    .line 25
    return-void
.end method
