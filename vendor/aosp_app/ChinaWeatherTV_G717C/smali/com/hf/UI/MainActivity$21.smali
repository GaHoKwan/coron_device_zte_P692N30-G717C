.class Lcom/hf/UI/MainActivity$21;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showExitDialg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private checked:Z

.field private isON:Z

.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$21;->val$preferences:Landroid/content/SharedPreferences;

    .line 1103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/MainActivity$21;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/hf/UI/MainActivity$21;->checked:Z

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/MainActivity$21;)Z
    .locals 1
    .parameter

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity$21;->isON:Z

    return v0
.end method

.method static synthetic access$2(Lcom/hf/UI/MainActivity$21;)Z
    .locals 1
    .parameter

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity$21;->checked:Z

    return v0
.end method

.method static synthetic access$3(Lcom/hf/UI/MainActivity$21;)Lcom/hf/UI/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "params"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21;->val$preferences:Landroid/content/SharedPreferences;

    .line 1110
    const-string v1, "warning_switch"

    .line 1111
    const/4 v2, 0x1

    .line 1109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hf/UI/MainActivity$21;->isON:Z

    .line 1112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1116
    new-instance v0, Lcom/hf/UI/HFDialog;

    iget-object v1, p0, Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;

    invoke-direct {v0, v1}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    invoke-virtual {v0, v6}, Lcom/hf/UI/HFDialog;->setCanceledOnTouchOutside(Z)V

    .line 1118
    new-array v1, v6, [I

    const/4 v2, 0x6

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 1119
    iget-boolean v1, p0, Lcom/hf/UI/MainActivity$21;->isON:Z

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setChecked(Z)V

    .line 1120
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setCheckText(I)V

    .line 1121
    iget-object v1, p0, Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;

    const v2, 0x7f080006

    new-array v3, v6, [Ljava/lang/Object;

    .line 1122
    iget-object v4, p0, Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Lcom/hf/UI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1121
    invoke-virtual {v1, v2, v3}, Lcom/hf/UI/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1123
    invoke-virtual {v0, v6}, Lcom/hf/UI/HFDialog;->setTitleGravity(I)V

    .line 1124
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 1125
    new-instance v2, Lcom/hf/UI/MainActivity$21$1;

    iget-object v3, p0, Lcom/hf/UI/MainActivity$21;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {v2, p0, v3}, Lcom/hf/UI/MainActivity$21$1;-><init>(Lcom/hf/UI/MainActivity$21;Landroid/content/SharedPreferences;)V

    .line 1124
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1140
    const v1, 0x104000a

    .line 1141
    new-instance v2, Lcom/hf/UI/MainActivity$21$2;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/MainActivity$21$2;-><init>(Lcom/hf/UI/MainActivity$21;Lcom/hf/UI/HFDialog;)V

    .line 1140
    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 1159
    const/high16 v1, 0x104

    .line 1160
    new-instance v2, Lcom/hf/UI/MainActivity$21$3;

    invoke-direct {v2, p0, v0}, Lcom/hf/UI/MainActivity$21$3;-><init>(Lcom/hf/UI/MainActivity$21;Lcom/hf/UI/HFDialog;)V

    .line 1159
    invoke-virtual {v0, v1, v2}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 1172
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V

    .line 1173
    return-void
.end method
