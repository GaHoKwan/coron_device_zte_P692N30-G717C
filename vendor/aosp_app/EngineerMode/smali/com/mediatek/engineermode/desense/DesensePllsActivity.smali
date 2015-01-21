.class public Lcom/mediatek/engineermode/desense/DesensePllsActivity;
.super Landroid/app/Activity;
.source "DesensePllsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    }
.end annotation


# static fields
.field private static final COMMAND_GET_ALL_PLL:Ljava/lang/String; = "cat /proc/clkmgr/pll_fsel"

.field private static final HEX_VALUE_DEFAULT:Ljava/lang/String; = "-1"

.field private static final REGEX_PLL_GROUP:Ljava/lang/String; = "\\[[\\s\\S]*?\\]"

.field private static final TAG:Ljava/lang/String; = "EM/DesensePll"


# instance fields
.field private mIdArray:[I

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameArray:[Ljava/lang/String;

.field private mValueArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mListData:Ljava/util/List;

    .line 153
    return-void
.end method

.method private static getAllPllInfo()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 99
    const/4 v3, 0x0

    .line 101
    .local v3, listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    :try_start_0
    const-string v10, "cat /proc/clkmgr/pll_fsel"

    invoke-static {v10}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 103
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, info:Ljava/lang/String;
    const-string v10, "\\[[\\s\\S]*?\\]"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 105
    .local v6, p:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 106
    .local v5, m:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 107
    .local v1, index:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 108
    .end local v3           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .local v4, listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    const/4 v7, 0x0

    .line 109
    .local v7, string:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    move-object v9, v8

    .line 111
    .end local v8           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .local v9, struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 113
    if-eqz v7, :cond_0

    .line 116
    if-nez v1, :cond_1

    .line 117
    new-instance v8, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;

    invoke-direct {v8}, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 118
    .end local v9           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .restart local v8       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v8, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mId:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 120
    add-int/lit8 v1, v1, 0x1

    move-object v9, v8

    .end local v8           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .restart local v9       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    goto :goto_0

    .line 121
    :cond_1
    if-ne v1, v12, :cond_2

    .line 122
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mName:Ljava/lang/String;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_2
    const-string v10, "-1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    const-string v10, "-1"

    iput-object v10, v9, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mHexVal:Ljava/lang/String;

    .line 132
    :goto_1
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    move-object v8, v9

    .line 137
    .end local v9           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .local v0, e:Ljava/lang/IllegalStateException;
    .restart local v8       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :goto_2
    :try_start_4
    const-string v10, "EM/DesensePll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllPllInfo IllegalStateException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v3, v4

    .line 150
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #index:I
    .end local v2           #info:Ljava/lang/String;
    .end local v4           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    .end local v7           #string:Ljava/lang/String;
    .end local v8           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .restart local v3       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    :cond_3
    :goto_3
    return-object v3

    .line 129
    .end local v3           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v1       #index:I
    .restart local v2       #info:Ljava/lang/String;
    .restart local v4       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v5       #m:Ljava/util/regex/Matcher;
    .restart local v6       #p:Ljava/util/regex/Pattern;
    .restart local v7       #string:Ljava/lang/String;
    .restart local v9       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :cond_4
    const/4 v10, 0x3

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mHexVal:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    move-object v8, v9

    .line 140
    .end local v9           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .local v0, e:Ljava/lang/NumberFormatException;
    .restart local v8       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :goto_4
    :try_start_6
    const-string v10, "EM/DesensePll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllPllInfo NumberFormatException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 145
    .end local v4           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v3       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .end local v8           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .restart local v4       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v9       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :cond_5
    move-object v3, v4

    .end local v4           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v3       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    goto :goto_3

    .line 142
    .end local v3           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v4       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    :catch_2
    move-exception v0

    move-object v8, v9

    .line 143
    .end local v9           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v8       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :goto_5
    const-string v10, "EM/DesensePll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllPllInfo IndexOutOfBoundsException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v3, v4

    .end local v4           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v3       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    goto :goto_3

    .line 147
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #index:I
    .end local v2           #info:Ljava/lang/String;
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    .end local v7           #string:Ljava/lang/String;
    .end local v8           #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :catch_3
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v10, "EM/DesensePll"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllPllInfo IOException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v1       #index:I
    .restart local v2       #info:Ljava/lang/String;
    .restart local v4       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v5       #m:Ljava/util/regex/Matcher;
    .restart local v6       #p:Ljava/util/regex/Pattern;
    .restart local v7       #string:Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v3       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    goto :goto_6

    .line 142
    .end local v3           #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v4       #listResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    .restart local v8       #struct:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :catch_5
    move-exception v0

    goto :goto_5

    .line 139
    :catch_6
    move-exception v0

    goto :goto_4

    .line 136
    :catch_7
    move-exception v0

    goto/16 :goto_2
.end method

.method private updateData()Z
    .locals 8

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, result:Z
    invoke-static {}, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->getAllPllInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;>;"
    if-eqz v2, :cond_1

    .line 79
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mListData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 81
    .local v4, size:I
    const-string v5, "EM/DesensePll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PLLGetAllInfo list size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mNameArray:[Ljava/lang/String;

    .line 83
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mIdArray:[I

    .line 84
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mValueArray:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 86
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;

    .line 87
    .local v1, item:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mNameArray:[Ljava/lang/String;

    iget-object v6, v1, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mName:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 88
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mIdArray:[I

    iget v6, v1, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mId:I

    aput v6, v5, v0

    .line 89
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mValueArray:[Ljava/lang/String;

    iget-object v6, v1, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mHexVal:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 90
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mListData:Ljava/util/List;

    iget-object v6, v1, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->mName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v5, "EM/DesensePll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PLLGetAllInfo list.get(i) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v1           #item:Lcom/mediatek/engineermode/desense/DesensePllsActivity$PllStruct;
    :cond_0
    const/4 v3, 0x1

    .line 95
    .end local v0           #i:I
    .end local v4           #size:I
    :cond_1
    return v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 40
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    invoke-static {}, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->getAllPllInfo()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 42
    const v2, 0x7f08034e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    const v2, 0x7f0b0158

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 47
    .local v1, pllMenuListView:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mListData:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 65
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/desense/PllDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mNameArray:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "id"

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mIdArray:[I

    aget v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "value"

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->mValueArray:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/DesensePllsActivity;->updateData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f08034f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_0
    return-void
.end method
