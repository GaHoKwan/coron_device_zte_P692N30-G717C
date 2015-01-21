.class public Leu/chainfire/supersu/LogDetailActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private ȃ:I

.field private ˮ͈:Ljava/lang/String;

.field private 櫯:Leu/chainfire/supersu/Logs;

.field private 鷭:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->鷭:Landroid/os/Bundle;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->櫯:Leu/chainfire/supersu/Logs;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->ˮ͈:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->ȃ:I

    .line 21
    return-void
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/LogDetailActivity;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->ˮ͈:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/LogDetailActivity;)Leu/chainfire/supersu/Logs;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->櫯:Leu/chainfire/supersu/Logs;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/LogDetailActivity;)I
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/LogDetailActivity;->ȃ:I

    return v0
.end method

.method public static 鷭(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V
    .locals 15

    .line 0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    invoke-virtual {v0}, Leu/chainfire/supersu/Application;->櫯()I

    move-result v5

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Application;

    move-object v6, v0

    iget v0, v6, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a0049

    if-eq v0, v1, :cond_0

    iget v0, v6, Leu/chainfire/supersu/Application;->櫯:I

    const v1, 0x7f0a004a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v0, 0x66

    const/16 v1, 0x99

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_1

    :cond_1
    const/16 v0, 0x99

    const/16 v1, 0xcc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 39
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    move-object v7, v0

    .line 41
    const-string v0, "%s @ %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v7, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v7, v2}, Leu/chainfire/supersu/Logs$Log;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v7, v2}, Leu/chainfire/supersu/Logs$Log;->櫯(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 42
    iget-object v8, v7, Leu/chainfire/supersu/Logs$Log;->櫯:Ljava/lang/String;

    .line 44
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 48
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 49
    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_3
    if-eqz v9, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move/from16 v1, p2

    if-ne v1, v0, :cond_4

    const/4 v0, 0x4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_5
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 p1, v0

    .line 53
    const-string v0, ""

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 56
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v1, p2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 58
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 62
    :cond_6
    const/16 p2, 0x1

    .line 63
    new-instance p3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, p3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 p2, 0x0

    .line 65
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const-string v0, ".DENIED."

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 p2, 0x0

    .line 67
    :cond_8
    if-nez p2, :cond_a

    .line 69
    iget-object v0, v7, Leu/chainfire/supersu/Logs$Log;->䒧:Ljava/lang/String;

    invoke-static {p0, v0}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    .line 71
    goto :goto_4

    .line 72
    :cond_9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    .line 74
    :goto_4
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    move-object/from16 v0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void

    .line 80
    :cond_a
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    const v1, 0x11170

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    goto :goto_5

    .line 86
    :cond_b
    move/from16 v0, p3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    .line 87
    move/from16 v0, p3

    int-to-char v0, v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :goto_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result p3

    move/from16 v0, p3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 89
    :cond_c
    move/from16 v0, p3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 91
    const/16 p3, 0x0

    .line 93
    new-instance v7, Landroid/text/SpannableStringBuilder;

    const-string v0, ""

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    const-string v0, "INTERACTIVE"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 98
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object/from16 p2, v0

    .line 99
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 100
    const/4 v9, 0x0

    .line 103
    :cond_e
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 104
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p2, v1

    .line 105
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v8, v1

    .line 106
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v8, v1

    .line 107
    const/4 v0, 0x0

    aget v0, p2, v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    aget v0, p2, v0

    if-ltz v0, :cond_12

    const/4 v0, 0x0

    aget v0, v8, v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    aget v0, v8, v0

    if-ltz v0, :cond_12

    .line 108
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    or-int v10, v0, v1

    .line 109
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    shl-int/lit8 v1, v1, 0x8

    or-int v11, v0, v1

    .line 111
    new-array v12, v11, [B

    .line 112
    invoke-virtual {p0, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-ne v0, v11, :cond_12

    .line 113
    add-int p3, p3, v11

    .line 114
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 115
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v12, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, " "

    const-string v2, "\u00a0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 116
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 117
    if-nez v9, :cond_f

    add-int/lit8 v0, v11, -0x1

    aget-byte v0, v12, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_f

    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 119
    :cond_f
    const/4 v0, 0x1

    if-ne v10, v0, :cond_10

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {v7, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 121
    :cond_10
    const/4 v0, 0x3

    if-ne v10, v0, :cond_11

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {v7, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 122
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 124
    move/from16 v0, p3

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_e

    .line 128
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    goto :goto_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    move-exception p1

    .line 131
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 132
    throw p1

    .line 131
    :cond_13
    :goto_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    return-void

    .line 134
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    return-void
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 4

    .line 0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/LogDetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    .line 28
    .line 29
    const/high16 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    const-string v0, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const/16 v0, 0x1200

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    return-void
.end method

.method private 鷭(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 3

    .line 0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p2, :cond_0

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f80

    :goto_1
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    move-object p2, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 182
    new-instance v0, Leu/chainfire/supersu/LogDetailActivity$1;

    invoke-direct {v0, p0, p3}, Leu/chainfire/supersu/LogDetailActivity$1;-><init>(Leu/chainfire/supersu/LogDetailActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/LogDetailActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Leu/chainfire/supersu/LogDetailActivity;->ȃ:I

    return-void
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/LogDetailActivity;Landroid/view/View;)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setContentView(I)V

    .line 150
    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 152
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 153
    const-string v0, "config_%s_logformat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "31122359"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->ˮ͈:Ljava/lang/String;

    .line 155
    sget-object v0, Leu/chainfire/supersu/Logs;->鷭:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->櫯:Leu/chainfire/supersu/Logs;

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->鷭:Landroid/os/Bundle;

    .line 158
    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->鷭:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->鷭:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 161
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->鷭:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->ȃ:I

    .line 163
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->櫯:Leu/chainfire/supersu/Logs;

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->ȃ:I

    iget-object v2, p0, Leu/chainfire/supersu/LogDetailActivity;->ˮ͈:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/app/Activity;Leu/chainfire/supersu/Logs;ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public onNext(Landroid/view/View;)V
    .locals 3

    .line 0
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$3;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$3;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public onPrev(Landroid/view/View;)V
    .locals 3

    .line 0
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$2;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Leu/chainfire/supersu/LogDetailActivity;->鷭(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 0
    const-string v0, "eu.chainfire.supersu.extra.logposition"

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->ȃ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    .line 225
    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    .line 226
    return-void
.end method
