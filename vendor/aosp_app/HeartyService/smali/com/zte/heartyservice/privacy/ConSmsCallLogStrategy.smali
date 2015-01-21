.class public abstract Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
.super Ljava/lang/Object;
.source "ConSmsCallLogStrategy.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$ConSmsCallLogType;
    }
.end annotation


# instance fields
.field private currentLayoutId:I

.field protected dialog:Landroid/app/Dialog;

.field protected listInflator:Landroid/view/LayoutInflater;

.field protected selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter "listInflator"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->currentLayoutId:I

    .line 32
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->listInflator:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract cancelTask()V
.end method

.method public abstract createAndShowDialog()V
.end method

.method public createAndShowDialog(ILandroid/app/Activity;)V
    .locals 6
    .parameter "layoutId"
    .parameter "mActivity"

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0176

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0173

    new-instance v4, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$1;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$1;-><init>(Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0174

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 53
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->dialog:Landroid/app/Dialog;

    .line 55
    return-void
.end method

.method public varargs doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "task"
    .parameter "params"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getListInflator()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->listInflator:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public abstract handleConfirmEvent()V
.end method

.method public abstract handleRadioEvent(I)V
.end method

.method public initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"
    .parameter "layoutId"

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 112
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->listInflator:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 113
    new-instance v0, Lcom/zte/heartyservice/privacy/SelectListItem;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/SelectListItem;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 114
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    .line 117
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    return-object p1
.end method

.method public abstract listInit()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 98
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->handleRadioEvent(I)V

    .line 99
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected setCancelBtnListener(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .parameter "cancelBtn"
    .parameter "dialog"

    .prologue
    .line 66
    new-instance v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$2;

    invoke-direct {v0, p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$2;-><init>(Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method protected setConfirmBtnListener(Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 1
    .parameter "sureBtn"
    .parameter "dialog"

    .prologue
    .line 81
    new-instance v0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$3;

    invoke-direct {v0, p0, p2}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy$3;-><init>(Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public setListInflator(Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter "listInflator"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->listInflator:Landroid/view/LayoutInflater;

    .line 132
    return-void
.end method

.method public abstract updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public updateView(Z)V
    .locals 0
    .parameter "isEmpty"

    .prologue
    .line 147
    return-void
.end method
