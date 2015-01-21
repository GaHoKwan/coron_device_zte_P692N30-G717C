.class public abstract Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.super Landroid/app/Activity;
.source "AbstractHeartyActivity.java"


# instance fields
.field protected actionBar:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 24
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->actionBar:Landroid/app/ActionBar;

    .line 25
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 30
    return-void
.end method
