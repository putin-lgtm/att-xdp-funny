#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>

// Định nghĩa một cái Map để chứa con số đếm
struct {
    __uint(type, BPF_MAP_TYPE_ARRAY);
    __uint(max_entries, 1);
    __type(key, __u32);
    __type(value, __u64);
} pkt_count_map SEC(".maps");

SEC("xdp")
int xdp_count_func(struct xdp_md *ctx) {
    __u32 key = 0;
    __u64 *value;

    value = bpf_map_lookup_elem(&pkt_count_map, &key);
    if (value) {
        // Tăng con số đếm trực tiếp trong bộ nhớ nhân
        __sync_fetch_and_add(value, 1);
    }

    return XDP_PASS;
}

char _license[] SEC("license") = "GPL";