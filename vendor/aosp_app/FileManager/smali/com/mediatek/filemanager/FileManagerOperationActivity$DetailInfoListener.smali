.class public Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;
.super Ljava/lang/Object;
.source "FileManagerOperationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/mediatek/filemanager/service/FileManagerService$OperationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileManagerOperationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DetailInfoListener"
.end annotation


# static fields
.field public static final DETAIL_DIALOG_TAG:Ljava/lang/String; = "detaildialogtag"


# instance fields
.field private mDetailsText:Landroid/widget/TextView;

.field private final mModifiedTime:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPermission:Ljava/lang/String;

.field private mSize:Ljava/lang/String;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/FileManagerOperationActivity;Lcom/mediatek/filemanager/FileInfo;)V
    .locals 6
    .parameter
    .parameter "fileInfo"

    .prologue
    const/4 v5, 0x0

    .line 1056
    iput-object p1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1057
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1058
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const v3, 0x7f080010

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mName:Ljava/lang/String;

    .line 1060
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1061
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const v3, 0x7f080011

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/mediatek/filemanager/utils/FileUtils;->sizeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mSize:Ljava/lang/String;

    .line 1064
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v0

    .line 1066
    .local v0, time:J
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1067
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const v3, 0x7f080012

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mModifiedTime:Ljava/lang/String;

    .line 1070
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1071
    invoke-virtual {p2}, Lcom/mediatek/filemanager/FileInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->getPermission(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mPermission:Ljava/lang/String;

    .line 1072
    return-void
.end method

.method private appendPermission(ZI)V
    .locals 3
    .parameter "hasPermission"
    .parameter "title"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    if-eqz p1, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPermission(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 1084
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    const v1, 0x7f080013

    invoke-direct {p0, v0, v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->appendPermission(ZI)V

    .line 1085
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    const v1, 0x7f080015

    invoke-direct {p0, v0, v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->appendPermission(ZI)V

    .line 1087
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result v0

    const v1, 0x7f080014

    invoke-direct {p0, v0, v1}, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->appendPermission(ZI)V

    .line 1090
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    iget-object v0, v0, Lcom/mediatek/filemanager/AbsBaseActivity;->mService:Lcom/mediatek/filemanager/service/FileManagerService;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/filemanager/service/FileManagerService;->cancel(Ljava/lang/String;)V

    .line 1140
    :cond_0
    return-void
.end method

.method public onTaskPrepare()V
    .locals 5

    .prologue
    .line 1095
    new-instance v0, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    invoke-direct {v0}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;-><init>()V

    .line 1096
    .local v0, builder:Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;
    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setCancelTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f030003

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setLayout(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->setTitle(I)Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/filemanager/AlertDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/mediatek/filemanager/AlertDialogFragment;

    move-result-object v1

    .line 1099
    .local v1, detailFragment:Lcom/mediatek/filemanager/AlertDialogFragment;
    invoke-virtual {v1, p0}, Lcom/mediatek/filemanager/AlertDialogFragment;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1100
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "detaildialogtag"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1102
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1103
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mDetailsText:Landroid/widget/TextView;

    .line 1105
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1106
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mDetailsText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mDetailsText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mModifiedTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mDetailsText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1112
    :cond_0
    return-void
.end method

.method public onTaskProgress(Lcom/mediatek/filemanager/service/ProgressInfo;)V
    .locals 3
    .parameter "progressInfo"

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/filemanager/service/ProgressInfo;->getTotal()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mediatek/filemanager/utils/FileUtils;->sizeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mSize:Ljava/lang/String;

    .line 1118
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mDetailsText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1120
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mModifiedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mDetailsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    :cond_0
    return-void
.end method

.method public onTaskResult(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1128
    const-string v0, "FileManagerOperationActivity"

    const-string v1, "DetailInfoListener onTaskResult."

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->this$0:Lcom/mediatek/filemanager/FileManagerOperationActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "detaildialogtag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "detail_info_key"

    iget-object v2, p0, Lcom/mediatek/filemanager/FileManagerOperationActivity$DetailInfoListener;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void
.end method
