#include <stdio.h>
#include <json-test-data.h>

const char* all_files[] = {
    JSON_TEST_DATA_FILES
};

int main() {
    printf("dir: %s\n", JSON_TEST_DATA_DIR);
    for (int i = 0; i < sizeof(all_files) / sizeof(all_files[0]); i++) {
        printf("file[%.2d]: %s\n", i, all_files[i]);
    }
    printf("canada: %s\n", JSON_TEST_DATA_FILE_canada);
    printf("mesh.pretty: %s\n", JSON_TEST_DATA_FILE_mesh_pretty);
    return 0;
}
