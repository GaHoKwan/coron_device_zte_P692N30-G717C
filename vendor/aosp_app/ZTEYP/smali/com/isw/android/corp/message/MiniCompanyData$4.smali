.class Lcom/isw/android/corp/message/MiniCompanyData$4;
.super Ljava/lang/Thread;
.source "MiniCompanyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniCompanyData;->updatePinYinFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$inputPath:Ljava/lang/String;

.field private final synthetic val$outputPinYinPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$inputPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    .line 1814
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1816
    const-string v21, "MiniCompanyData"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updatePinYinFile:inputPath: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$inputPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    sget-object v17, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    .line 1818
    .local v17, pinyinFilePath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1819
    .local v16, pinyinFileDir:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    .line 1820
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 1822
    :cond_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$inputPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v10, localCompanyFile:Ljava/io/File;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v18, pinyinLocalCompanyFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 1825
    .local v7, fw:Ljava/io/FileWriter;
    const/4 v5, 0x0

    .line 1828
    .local v5, fr:Ljava/io/FileReader;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1829
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1830
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 1832
    :cond_1
    new-instance v8, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 1833
    .end local v7           #fw:Ljava/io/FileWriter;
    .local v8, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 1834
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1836
    .local v2, br:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    move-result-object v14

    .local v14, oldItems:Ljava/lang/String;
    if-nez v14, :cond_6

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v7, v8

    .line 1873
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v8           #fw:Ljava/io/FileWriter;
    .end local v14           #oldItems:Ljava/lang/String;
    .restart local v7       #fw:Ljava/io/FileWriter;
    :cond_3
    if-eqz v5, :cond_4

    .line 1875
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 1880
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 1882
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 1887
    :cond_5
    :goto_2
    const-string v21, "MiniCompanyData"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updatePinYinFile done:outputPinYinPath: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :goto_3
    return-void

    .line 1837
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v8       #fw:Ljava/io/FileWriter;
    .restart local v14       #oldItems:Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1838
    .local v12, oldItemContent:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 1839
    array-length v0, v12

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    const/16 v21, 0x5

    aget-object v21, v12, v21

    const-string v22, "s"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1842
    :cond_7
    const/16 v21, 0x1

    aget-object v3, v12, v21

    .line 1843
    .local v3, companyName:Ljava/lang/String;
    sget-object v21, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Lcom/isw/android/corp/util/PinYin;->getInstance(Landroid/content/Context;)Lcom/isw/android/corp/util/PinYin;

    move-result-object v21

    .line 1844
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/isw/android/corp/util/PinYin;->getPinyinAndShortPinyinString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1845
    .local v19, pinyins:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v15, v19, v21

    .line 1846
    .local v15, pinyin:Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v20, v19, v21

    .line 1847
    .local v20, simplePy:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1848
    .local v13, oldItemContents:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_a

    .line 1859
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1860
    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1859
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1862
    .local v11, newItems:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    goto/16 :goto_0

    .line 1866
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v3           #companyName:Ljava/lang/String;
    .end local v9           #i:I
    .end local v11           #newItems:Ljava/lang/String;
    .end local v12           #oldItemContent:[Ljava/lang/String;
    .end local v13           #oldItemContents:Ljava/lang/StringBuffer;
    .end local v14           #oldItems:Ljava/lang/String;
    .end local v15           #pinyin:Ljava/lang/String;
    .end local v19           #pinyins:[Ljava/lang/String;
    .end local v20           #simplePy:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v7, v8

    .line 1867
    .end local v8           #fw:Ljava/io/FileWriter;
    .local v4, e:Ljava/io/FileNotFoundException;
    .restart local v7       #fw:Ljava/io/FileWriter;
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1873
    if-eqz v5, :cond_8

    .line 1875
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1880
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :cond_8
    :goto_6
    if-eqz v7, :cond_9

    .line 1882
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1887
    :cond_9
    :goto_7
    const-string v21, "MiniCompanyData"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updatePinYinFile done:outputPinYinPath: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1849
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #companyName:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v8       #fw:Ljava/io/FileWriter;
    .restart local v9       #i:I
    .restart local v12       #oldItemContent:[Ljava/lang/String;
    .restart local v13       #oldItemContents:Ljava/lang/StringBuffer;
    .restart local v14       #oldItems:Ljava/lang/String;
    .restart local v15       #pinyin:Ljava/lang/String;
    .restart local v19       #pinyins:[Ljava/lang/String;
    .restart local v20       #simplePy:Ljava/lang/String;
    :cond_a
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v9, v0, :cond_b

    .line 1850
    :try_start_9
    const-string v21, ""

    aput-object v21, v12, v9

    .line 1852
    :cond_b
    array-length v0, v12

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    .line 1853
    aget-object v21, v12, v9

    .line 1854
    const-string v22, ";"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 1853
    aput-object v21, v12, v9

    .line 1856
    :cond_c
    aget-object v21, v12, v9

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    .line 1857
    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    move-result-object v13

    .line 1848
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 1876
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v3           #companyName:Ljava/lang/String;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v8           #fw:Ljava/io/FileWriter;
    .end local v9           #i:I
    .end local v12           #oldItemContent:[Ljava/lang/String;
    .end local v13           #oldItemContents:Ljava/lang/StringBuffer;
    .end local v14           #oldItems:Ljava/lang/String;
    .end local v15           #pinyin:Ljava/lang/String;
    .end local v19           #pinyins:[Ljava/lang/String;
    .end local v20           #simplePy:Ljava/lang/String;
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #fw:Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .line 1877
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1883
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1884
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1868
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1869
    .restart local v4       #e:Ljava/io/IOException;
    :goto_8
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1873
    if-eqz v5, :cond_d

    .line 1875
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 1880
    :cond_d
    :goto_9
    if-eqz v7, :cond_e

    .line 1882
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1887
    :cond_e
    :goto_a
    const-string v21, "MiniCompanyData"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updatePinYinFile done:outputPinYinPath: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1876
    :catch_4
    move-exception v4

    .line 1877
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1883
    :catch_5
    move-exception v4

    .line 1884
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1870
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1871
    .local v4, e:Ljava/lang/Exception;
    :goto_b
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1873
    if-eqz v5, :cond_f

    .line 1875
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 1880
    .end local v4           #e:Ljava/lang/Exception;
    :cond_f
    :goto_c
    if-eqz v7, :cond_10

    .line 1882
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 1887
    :cond_10
    :goto_d
    const-string v21, "MiniCompanyData"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updatePinYinFile done:outputPinYinPath: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1876
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 1877
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 1883
    .end local v4           #e:Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 1884
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 1872
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 1873
    :goto_e
    if-eqz v5, :cond_11

    .line 1875
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 1880
    :cond_11
    :goto_f
    if-eqz v7, :cond_12

    .line 1882
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 1887
    :cond_12
    :goto_10
    const-string v22, "MiniCompanyData"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "updatePinYinFile done:outputPinYinPath: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/message/MiniCompanyData$4;->val$outputPinYinPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    throw v21

    .line 1876
    :catch_9
    move-exception v4

    .line 1877
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 1883
    .end local v4           #e:Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 1884
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 1876
    .end local v4           #e:Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 1877
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1883
    .end local v4           #e:Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 1884
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1872
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v21

    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto :goto_e

    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catchall_2
    move-exception v21

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto :goto_e

    .line 1870
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_d
    move-exception v4

    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto :goto_b

    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto :goto_b

    .line 1868
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_f
    move-exception v4

    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto/16 :goto_8

    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_10
    move-exception v4

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto/16 :goto_8

    .line 1866
    :catch_11
    move-exception v4

    goto/16 :goto_5

    .end local v7           #fw:Ljava/io/FileWriter;
    .restart local v8       #fw:Ljava/io/FileWriter;
    :catch_12
    move-exception v4

    move-object v7, v8

    .end local v8           #fw:Ljava/io/FileWriter;
    .restart local v7       #fw:Ljava/io/FileWriter;
    goto/16 :goto_5
.end method
