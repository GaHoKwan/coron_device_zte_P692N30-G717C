.class public Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;
.super Landroid/app/ListActivity;
.source "AmoiEngineerMode.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EngineerMode"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->finish()V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->mStrings:[Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->mStrings:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 68
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 36
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/PhoneInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 40
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/AmoiEngineerMode/HardwareTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 52
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/BatteryInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 56
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/OtherInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 59
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.amoi.amoiinstallpackage"

    const-string v3, "com.amoi.amoiinstallpackage.AmoiInstallPackage"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_1

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
