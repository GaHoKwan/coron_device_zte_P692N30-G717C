.class public Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;
.super Landroid/app/Activity;
.source "RfDesenseTxTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DIALOG_CONFIRM:I = 0x0

.field private static final FLIGHT_MODE:I = 0x0

.field private static final KEY_REBOOT:Ljava/lang/String; = "rebooted"

.field public static final PREF_FILE:Ljava/lang/String; = "tx_test"

.field private static final TAG:Ljava/lang/String; = "RfDesenseTxTest"


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field mIndicator:Landroid/app/ProgressDialog;

.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mPosition:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mIndicator:Landroid/app/ProgressDialog;

    .line 86
    new-instance v0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$1;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->enterFlightMode()V

    return-void
.end method

.method private enterFlightMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 185
    .local v0, cmd:[Ljava/lang/String;
    const-string v2, "AT+CFUN=4"

    aput-object v2, v0, v5

    .line 186
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    .line 187
    const-string v2, "RfDesenseTxTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 193
    .local v1, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 203
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mIndicator:Landroid/app/ProgressDialog;

    .line 204
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mIndicator:Landroid/app/ProgressDialog;

    const-string v3, "Enter flight mode"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mIndicator:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 206
    return-void
.end method

.method private resetSettings()V
    .locals 3

    .prologue
    .line 209
    const-string v1, "tx_test"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, pref:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mPosition:I

    if-nez v1, :cond_1

    .line 175
    const-class v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestGsm;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mPosition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 178
    const-class v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v3, 0x7f030075

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    const v3, 0x7f0b015b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 115
    .local v2, simTypeListView:Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f080547

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 118
    const v3, 0x7f080548

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    return-void

    .line 119
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 120
    const v3, 0x7f080549

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 169
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 150
    :pswitch_0
    new-instance v1, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest$2;-><init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;)V

    .line 159
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "TX Test"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Force entering flight mode!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 129
    const-string v3, "tx_test"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "rebooted"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->resetSettings()V

    .line 134
    :cond_0
    iput p3, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->mPosition:I

    .line 136
    const-string v3, "Started_2G"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, stateGsm:I
    const-string v3, "Started_3G"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, stateTd:I
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 140
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTest;->start()V

    goto :goto_0
.end method
