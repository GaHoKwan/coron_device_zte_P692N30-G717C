.class public abstract Leu/chainfire/supersu/PreferenceListFragment;
.super Lo/囃;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/PreferenceListFragment$OnPreferenceAttachedListener;
    }
.end annotation


# instance fields
.field private ȃ:I

.field private ˮ͈:Landroid/widget/ListView;

.field private 櫯:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private 鷭:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Lo/囃;-><init>()V

    .line 31
    new-instance v0, Leu/chainfire/supersu/PreferenceListFragment$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PreferenceListFragment$1;-><init>(Leu/chainfire/supersu/PreferenceListFragment;)V

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->櫯:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private 櫯()Landroid/preference/PreferenceScreen;
    .locals 4

    .line 0
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "getPreferenceScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 201
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 202
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method private 鷭()Landroid/preference/PreferenceManager;
    .locals 5

    .line 0
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 157
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Leu/chainfire/supersu/PreferenceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PreferenceListFragment;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;->櫯()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->ˮ͈:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 0
    invoke-super {p0, p1, p2, p3}, Lo/囃;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "dispatchActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Intent;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 127
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lo/囃;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;->鷭()Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 0
    invoke-super {p0}, Lo/囃;->onDestroy()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->ˮ͈:Landroid/widget/ListView;

    .line 104
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "dispatchActivityDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 106
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 108
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 0
    invoke-super {p0}, Lo/囃;->onDestroyView()V

    .line 62
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 0
    const-string v0, "xml"

    iget v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->ȃ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-super {p0, p1}, Lo/囃;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 0
    invoke-super {p0}, Lo/囃;->onStop()V

    .line 91
    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "dispatchActivityStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 92
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 95
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 0
    invoke-super {p0, p1, p2}, Lo/囃;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Leu/chainfire/supersu/PreferenceListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->ˮ͈:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->ˮ͈:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PreferenceListFragment;->setListShown(Z)V

    .line 78
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PreferenceListFragment;->鷭(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_1

    move-object p2, p1

    move-object p1, p0

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "setPreferences"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p1, Leu/chainfire/supersu/PreferenceListFragment;->鷭:Landroid/preference/PreferenceManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p1, Leu/chainfire/supersu/PreferenceListFragment;->櫯:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Leu/chainfire/supersu/PreferenceListFragment;->櫯:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :cond_1
    :goto_0
    move-object p1, p0

    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->櫯:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Leu/chainfire/supersu/PreferenceListFragment;->櫯:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    :cond_2
    return-void
.end method

.method protected abstract 鷭(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
.end method
