.class public Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "DisguisePasswordProtectorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v3, 0x7f0a0300

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 19
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-class v3, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 21
    .local v1, fragment:Landroid/app/Fragment;
    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 22
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1           #fragment:Landroid/app/Fragment;
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguisePasswordProtectorActivity;->finish()V

    goto :goto_0
.end method
