.class public Lcom/zte/heartyservice/setting/QRCodeDownload;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "QRCodeDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f0a05a9

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/QRCodeDownload;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/setting/QRCodeDownload;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 28
    const v0, 0x7f0300dc

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/QRCodeDownload;->setContentView(I)V

    .line 31
    return-void
.end method
